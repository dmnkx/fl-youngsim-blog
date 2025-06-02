'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.bin": "918e19ae44f9f134d971a8e1c62aa6dc",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/AssetManifest.json": "a6cb82d4100b858fae71c5b4b9bf7ef6",
"assets/FontManifest.json": "3fc35fee801db57e1a90c8e8c94e8b29",
"assets/assets/fonts/GowunDodum-Regular.ttf": "27ffbda086026064d5d967a95c2cbd70",
"assets/assets/images/logo.jpeg": "462ee0911f157387a6da949e406cbc81",
"assets/assets/images/015.jpeg": "c2b8de9f4bed16918c012d290b2e4169",
"assets/assets/images/013.jpeg": "b17d069d8b4aae67938e2489b2c40ad1",
"assets/assets/images/010.jpeg": "c08b2b3e31548b1671d7a6221031684b",
"assets/assets/images/007.jpeg": "e1307afa66fc81036dd400507ab4843d",
"assets/assets/images/020.jpeg": "838d44072190e4e6c4ba6c83f22c71b0",
"assets/assets/images/019.jpeg": "1f3042f53f4d2f423bedf0bf69407d7e",
"assets/assets/images/014.jpeg": "7a05235cece548f7746edd2c365181c9",
"assets/assets/images/011.jpeg": "2e4c40c4834f13902a50ad9ed3ef4d22",
"assets/assets/images/004.jpeg": "fd75773826de370eb25aa02d4bc90356",
"assets/assets/images/016.jpeg": "a0055979cfce828b2cea835aa2864a1c",
"assets/assets/images/012.jpeg": "12f802e4ebb474b33097d444ab575e77",
"assets/assets/images/009.jpeg": "623885c2b4c91f06f686aa57115fb122",
"assets/assets/images/005.jpeg": "fad0fcb34c1248cd90fe41f7757435da",
"assets/assets/images/002.jpeg": "9128457de0279720ce8693fe91a8c202",
"assets/assets/images/008.jpeg": "5aacac6a2f241e6211c4220551005fea",
"assets/assets/images/022.jpeg": "fae2a48bd5d4689ccc64f26c1b5bd566",
"assets/assets/images/018.jpeg": "c6c2bb4f57f85be1966e8c197047be2a",
"assets/assets/images/021.jpeg": "8374921f1101699090df026c9c12ff75",
"assets/assets/images/017.jpeg": "defb77cf80cb744d2495808b9bd849fe",
"assets/assets/images/001.jpeg": "d5a353917e1f45ba1eae92862a336387",
"assets/assets/images/023.jpeg": "4da7ede34489776c7b2271104f413450",
"assets/assets/images/006.jpeg": "2cc2e0f63927b3077965b7a86eeedaa7",
"assets/assets/images/003.jpeg": "940563b586e18d07e87dabb4e141a568",
"assets/NOTICES": "82550c56e6c516ce5611eb067df82cab",
"assets/AssetManifest.bin.json": "0b983128de10f8a37d771ca5fd71efe2",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"manifest.json": "764b97f6dfc13d248a6defc30982073d",
"index.html": "9ec4c6ff45334c3c8b4b1625030f8b1d",
"/": "9ec4c6ff45334c3c8b4b1625030f8b1d",
"version.json": "45ee2567a261510e862183cea390e8f8",
"flutter_bootstrap.js": "f970c440e344fb43aef9e1546e0d491e",
"main.dart.js": "65b7f3552cc3725fbe3e360e53bafacb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

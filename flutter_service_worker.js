'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"index.html": "8be9c301b671a6444a169679e924e4c4",
"/": "8be9c301b671a6444a169679e924e4c4",
"flutter.js": "3688efe0a39e59781b4f95efbd6b5b62",
"icons/apple-icon-120x120.png": "96f043a86452878a1f29a81d93d61573",
"icons/apple-icon-144x144.png": "899490bc8a1c1dc427665ffa2806d8ec",
"icons/ms-icon-70x70.png": "45e3b79d444b7a47db69f05debaec4bf",
"icons/apple-icon.png": "e0db4555394f8f4bcd89c8cd23b67fd8",
"icons/android-icon-144x144.png": "899490bc8a1c1dc427665ffa2806d8ec",
"icons/apple-icon-180x180.png": "b7032c25d56abee4f0850a3fdfdd1470",
"icons/favicon-16x16.png": "d554e611ecc9f57bd90f404b66558161",
"icons/apple-icon-57x57.png": "ad8eac2208e148e398f1c00d401f52e5",
"icons/apple-icon-152x152.png": "33da42f0e7c15adb1b223f6c3279bd61",
"icons/ms-icon-150x150.png": "598e3ba978ab55427d07e1e2dd55a0de",
"icons/android-icon-72x72.png": "e89dc935d7c44482572d3f32dd856bcf",
"icons/android-icon-96x96.png": "bedd7a1b3637116e87cf4b66f45995b0",
"icons/ms-icon-144x144.png": "595263a22a4977c51daa3bc861654f99",
"icons/apple-icon-60x60.png": "391750a59decc4f20eab071f7034b16d",
"icons/favicon-32x32.png": "201f84203e006583558af2098089d676",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/android-icon-192x192.png": "c207e4fdc5077605eb7934ae1dd2c7cf",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/apple-icon-114x114.png": "726806a4c9fd70219eeb782b268f7d78",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/android-icon-36x36.png": "6c1397f037ce8db578abcd92e05fa25e",
"icons/favicon.ico": "2473e9d6e4707bd6baa7bfa075594eab",
"icons/apple-icon-precomposed.png": "e0db4555394f8f4bcd89c8cd23b67fd8",
"icons/android-icon-48x48.png": "ae56d79b4f8ae8d6160fddf95155b624",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/apple-icon-72x72.png": "e89dc935d7c44482572d3f32dd856bcf",
"icons/ms-icon-310x310.png": "30cdd8e968cb60b43d2bd8d343350c6a",
"icons/apple-icon-76x76.png": "a20f40a1dd87c49b3738f53d09ead1c0",
"icons/favicon-96x96.png": "2b4e02e793890befd02edfa8a295232e",
"manifest.json": "0dcde173288fc074099f5bece752ef6c",
"version.json": "d7101fe5e9f296ab44cc49f3ba705142",
"splash/style.css": "d2604f516e6552af82c761e801b0e2c4",
"assets/FontManifest.json": "e946909683f07e0fd88ac752f0ec9762",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/AssetManifest.json": "c976efca4b23bacfc7f53b5868221465",
"assets/assets/images/moire_playground_ss.PNG": "97596030d3692c4b0fd5cde962faff35",
"assets/assets/images/jmap_ss.png": "fe811c98200751b3e1fa54d562796e22",
"assets/assets/images/dgpinv_ss.png": "f754dfb060613da3fcd38ef8f515ac8f",
"assets/assets/images/lnkin_ss.png": "897e34cf62bb45379d266c63f7b9fef0",
"assets/assets/images/dgp_ops_ss.png": "b133b331f13db6c1395c01097c18ee15",
"assets/assets/images/shooshoe_ss.png": "a4c8d44860a3b40f3c6e6f18a0317876",
"assets/assets/images/crawler_ss.png": "447e6cba598309e1d38a7cc4452c0d93",
"assets/assets/images/detrack_ss.png": "61b783d9c3bce515b732facf7fa780dc",
"assets/assets/images/profile_pic.jpeg": "5342220068da45e924983f809bbec55e",
"assets/assets/images/cvapp_ss.png": "47790482df3cefa652e0f87c9891443f",
"assets/assets/images/lnktree_ss.png": "01832b0886c5f87e94e298be1992aec3",
"assets/assets/fonts/LinktreeIcons.ttf": "dfe21298718ac5acfeebcb30647f7d2e",
"assets/assets/fonts/RobotoMono/RobotoMono-LightItalic.ttf": "060d28a8c0576728842455c0a92641e0",
"assets/assets/fonts/RobotoMono/RobotoMono-Medium.ttf": "8ad82b1dc550319993a7d6c932b2656d",
"assets/assets/fonts/RobotoMono/RobotoMono-ExtraLightItalic.ttf": "2186a1bc18fe3a5b9d35b1f0a9661f97",
"assets/assets/fonts/RobotoMono/RobotoMono-ExtraLight.ttf": "9bab8fe7af63fb4a1d536f0690799953",
"assets/assets/fonts/RobotoMono/RobotoMono-SemiBold.ttf": "2a12618b6d46fd798157e4b9d29cdf06",
"assets/assets/fonts/RobotoMono/RobotoMono-Thin.ttf": "7cb58857d294ac1e09b72ea9403c690a",
"assets/assets/fonts/RobotoMono/RobotoMono-MediumItalic.ttf": "50fcbc561a338706746be330f2b7ef99",
"assets/assets/fonts/RobotoMono/RobotoMono-Light.ttf": "fa8ab495d494eccb28f4431f054ddbd4",
"assets/assets/fonts/RobotoMono/RobotoMono-BoldItalic.ttf": "9f19015ac5913e03cdd542eb73d17d12",
"assets/assets/fonts/RobotoMono/RobotoMono-ThinItalic.ttf": "95e08d0c587d02c33914026841dd5e89",
"assets/assets/fonts/RobotoMono/RobotoMono-Bold.ttf": "e72fdf1cca2cebcbe91325bbe9f9e5da",
"assets/assets/fonts/RobotoMono/RobotoMono-SemiBoldItalic.ttf": "e0781b003f2cd1145518cc5f5f8d134c",
"assets/assets/fonts/RobotoMono/RobotoMono-Regular.ttf": "e5ca8c0ac474df46fe45840707a0c483",
"assets/assets/fonts/RobotoMono/RobotoMono-Italic.ttf": "4e76966e85cfc4edb3db058576edcb1b",
"assets/assets/logos/flutter_logo.png": "de6ae4bb3aa13ed127f929f012d0d992",
"assets/assets/logos/python_logo.png": "9ae7d0c2a37c4626d2ea58f615906814",
"assets/assets/logos/css_logo.png": "c9421be52fe48fdf04839b53f8e9f1d4",
"assets/assets/logos/android_logo.png": "b1642c07ff29ddad4c920099e6c3f5ab",
"assets/assets/logos/framer_logo.png": "77e53c620da3fb24df7db8eebd588a2b",
"assets/assets/logos/coffeescript_logo.png": "801eb8b7eca1f0a489ed8e465c5f650a",
"assets/assets/logos/html_logo.png": "cae1b4f6b223fe5a7bb712b680cffa67",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/NOTICES": "8dc0de54d5755001af286ecce48e9982",
"main.dart.js": "75be9d4ccc85204c510b82b9c3d7c11c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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

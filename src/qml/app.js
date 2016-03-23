export function loadUrl(url) {
    return fetch(url)
        .then(response => response.text())
}

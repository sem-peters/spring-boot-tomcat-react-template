<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<script>

fetch('/.vite/manifest.json').then((response) => response.json()).then((manifest) => {

    const addScriptToDom = (src) => {
        const script = document.createElement('script')
        script.src = src
        document.body.appendChild(script)
    }

    const addCssToDom = (href) => {
        const link = document.createElement('link')
        link.href = href
        link.rel = 'stylesheet'
        document.head.appendChild(link)
    }

    Object.entries(manifest).filter((entry) => {
        return entry[1] && entry[1].file && entry[1].isEntry
    }).forEach((entryPoint) => {
        addScriptToDom(entryPoint[1].file)
        if (entryPoint[1].css && entryPoint[1].css.length > 0) {
            entryPoint[1].css.forEach(addCssToDom)
        }
    })

}).catch((err) => {
    console.error("Failed loading webapp.", err)
})

</script>
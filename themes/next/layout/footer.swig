{% if theme.graphviz.enable %}
  <script src='https://cdnjs.cloudflare.com/ajax/libs/viz.js/1.7.1/viz.js'></script>
  <script>
    String.prototype.replaceAll = function(search, replacement) {
      var target = this;
      return target.split(search).join(replacement);
    };

    let vizObjects = document.querySelectorAll('.graphviz')

    for (let item of vizObjects) {
      let svg = undefined
      try {
        svg = Viz(item.textContent.replaceAll('–', '--'), 'svg')
      } catch(e) {
        svg = `<pre class="error">${e}</pre>`
      }
      item.outerHTML = svg
    }
  </script>
{% endif %}



/*{% if theme.mermaid.enable %}*/
  /*<script src='https://unpkg.com/mermaid@{{ theme.mermaid.version }}/dist/mermaid.min.js'></script>*/
  /*<script>*/
    /*if (window.mermaid) {*/
      /*mermaid.initialize({{ JSON.stringify(theme.mermaid.options) }});*/
    /*}*/
  /*</script>*/
/*{% endif %}*/

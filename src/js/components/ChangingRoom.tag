<changing-room>
    <div class="layer-wrap">
        <img src="assets/images/layers/base.png" alt="Naked Dave" class="base-layer">
        <img class="layer" src="{ legLayer }">
        <img class="layer" src="{ torsoLayer }">
        <img class="layer" src="{ headLayer }">
    </div>
    <script type="es6">
        let base = 'assets/images/layers/'
        
        this.updateLayers = function() {
            this.headLayer = `${base}/head/${this.opts.activeLayers.head}.png`
            this.torsoLayer = `${base}/torso/${this.opts.activeLayers.torso}.png`
            this.legLayer = `${base}/legs/${this.opts.activeLayers.legs}.png`
        }
        
        opts.bus.on('changeLayer', payload => {
            this.opts.activeLayers[payload.layerName] = payload.layerSrc
            this.updateLayers()
            this.update()
        })

        this.on('mount', () => {
            this.updateLayers()
        })
    </script>
</changing-room>
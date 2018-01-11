<changing-room>
    <div class="layer-wrap">
        <img src="assets/images/layers/base.png" alt="Naked Dave" class="base-layer">
        <img class="layer" src="{ legLayer }">
        <img class="layer" src="{ torsoLayer }">
        <img class="layer" src="{ headLayer }">
    </div>
    <script type="es6">
        let base = 'assets/images/layers/'
        this.activeLayers = {
            'head': 'base',
            'torso': 'base',
            'legs': 'base'
        }

        this.updateLayers = function() {
            this.headLayer = `${base}/head/${this.activeLayers.head}.png`
            this.torsoLayer = `${base}/torso/${this.activeLayers.torso}.png`
            this.legLayer = `${base}/legs/${this.activeLayers.legs}.png`
        }

        this.updateLayers()
        
        opts.bus.on('changeLayer', payload => {
            this.activeLayers[payload.layerName] = payload.layerSrc
            this.updateLayers()
            this.update()
        })
    </script>
</changing-room>
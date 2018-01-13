<changing-room>
    <div class="layer-wrap">
        <img src="assets/images/layers/base.png" alt="Naked Dave" class="base-layer">
        <img class="layer" src="{ legLayer }">
        <img class="layer" src="{ torsoLayer }">
        <img class="layer" src="{ headLayer }">
    </div>
    <script>
        let base = 'assets/images/layers'
        let { store } = this.opts

        this.headLayer = `${base}/head/${this.opts.store.getState.activeLayers.head}.png`
        this.torsoLayer = `${base}/torso/${this.opts.store.getState.activeLayers.torso}.png`
        this.legLayer = `${base}/legs/${this.opts.store.getState.activeLayers.legs}.png`

        //listen to the store change event and re-set up any needed changes and then call update
        store.on('CHANGE', () => {
            this.headLayer = `${base}/head/${store.getState.activeLayers.head}.png`
            this.torsoLayer = `${base}/torso/${store.getState.activeLayers.torso}.png`
            this.legLayer = `${base}/legs/${store.getState.activeLayers.legs}.png`
            this.update()
        })
    </script>
</changing-room>
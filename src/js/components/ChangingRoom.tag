<changing-room>
    <div class="layer-wrap">
        <img src="assets/images/layers/base.png" alt="Naked Dave" class="base-layer">
        <img class="layer" src="{ this.legLayer }">
        <img class="layer" src="{ this.torsoLayer }">
        <img class="layer" src="{ this.headLayer }">
    </div>
    <script>
        let base = 'assets/images/layers'
        let { activelayers } = this.opts

        this.headLayer = `${base}/head/${activelayers.head}.png`
        this.torsoLayer = `${base}/torso/${activelayers.torso}.png`
        this.legLayer = `${base}/legs/${activelayers.legs}.png`

        //listen to the store change event and re-set up any needed changes and then call update
        this.store.on('CHANGE', () => {
            this.headLayer = `${base}/head/${activelayers.head}.png`
            this.torsoLayer = `${base}/torso/${activelayers.torso}.png`
            this.legLayer = `${base}/legs/${activelayers.legs}.png`
        })
    </script>
</changing-room>
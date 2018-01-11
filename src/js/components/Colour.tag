<colour>
    
    <div class="colour mr-4" style={ styles } onclick='{ changeLayer }'></div>
    
    <script type='es6'>
        let bus = this.parent.opts.bus
        let layerName = this.parent.opts.layername
        if (this.thumbnail !== '') {
            this.styles = {
                'background': `url(assets/images/thumbs/${this.thumbnail}.png) no-repeat 50% 50% / cover`
            }
        } else {
            this.styles = {
                'background-color': this.hex
            }
        }
       
        this.changeLayer = function(e) {
            bus.trigger('changeLayer', {
                layerName: layerName,
                layerSrc: this.layerSrc //replace with image src
            })
        }
    </script>
</colour>
<colour>
    
    <div class="colour mr-4 { isActive: isActive }" style={ styles } onclick='{ changeLayer }'></div>
    
    <script>
        let { store, layername, activelayers } = this.parent.opts

        this.isActive = (activelayers[layername] === this.layerSrc) ? true : false;
        
        if (this.thumbnail !== '') {
            this.styles = {
                'background': `url(assets/images/thumbs/${this.thumbnail}.png) no-repeat 50% 50% / cover`
            }
        } else {
            this.styles = {
                'background-color': this.hex
            }
        }
       
        this.changeLayer = (e) => {
            store.trigger('ACTION', {
                action: 'CHANGE_LAYER',
                data: {
                    layerName: layername,
                    layerSrc: this.layerSrc //replace with image src
                }
            })
        }

        store.on('CHANGE', () => {
            this.isActive = (store.getState.activeLayers[layername] === this.layerSrc) ? true : false;
        })
    </script>
</colour>
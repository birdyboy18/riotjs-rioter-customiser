<colour>
    
    <div class="colour mr-4 { isActive: isActive }" style={ styles } onclick='{ changeLayer }'></div>
    
    <script type='es6'>
        let store = this.parent.opts.store
        let layerName = this.parent.opts.layername

        this.isActive = false;
        
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
                name: 'CHANGE_LAYER',
                data: {
                    layerName: layerName,
                    layerSrc: this.layerSrc //replace with image src
                }
            })
        }

        /** this.checkActive = () => {
            if (store.getState[this.parent.opts.layername] === this.layerSrc) {
                this.isActive = true
            } else {
                this.isActive = false
            }
            this.update()
        }

        this.on('mount', () => {
            this.checkActive()
        }) */
    </script>
</colour>
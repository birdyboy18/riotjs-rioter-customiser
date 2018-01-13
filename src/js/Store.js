/**
 * Simple Store pattern that extends the riot observable
 */
import Riot from 'riot'

class Store {
    constructor(initialState) {
        Riot.observable(this)
        this.state = initialState || {};
        this.on('ACTION', this.handleAction)
    }

    handleAction(payload) {
        switch(payload.action) {
            case 'CHANGE_LAYER':
                this.state.activeLayers[payload.data.layerName] = payload.data.layerSrc
                this.trigger('CHANGE')
            default: 
                //do nothing
                this.trigger('CHANGE')
        }
    }

    get getState() {
        return this.state;
    }
}

export default Store
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
        console.log(payload);
        this.trigger('CHANGE')
    }

    get getState() {
        return this.state;
    }
}

export default Store
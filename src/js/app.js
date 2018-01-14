import riot from 'riot'
import Store from './Store'
import ProductCustomier from './components/ProductCustomiser.tag'
import sidebar from './components/sidebar.tag'
import ColourList from './components/ColourList.tag'
import Colour from './components/Colour.tag'
import ChangingRoom from './components/ChangingRoom.tag'
import StoreMixin from './storeMixin.js'

const initialState = {
    activeLayers: {
        'head': 'base',
        'torso': 'base',
        'legs': 'base'
    },
    options: {
        head: [
            {
                name: 'Spotty Bandana',
                thumbnail: 'bandana',
                layerSrc: 'bandana',
                hex: '#D92222'
            },
            {
                name: 'Lol Helmet',
                thumbnail: 'lol',
                layerSrc: 'riot-helmet',
                hex: '#414042'
            },
            {
                name: 'Space Helmet',
                thumbnail: 'alien-helmet',
                layerSrc: 'alien-helmet',
                hex: '#18F700'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: 'base',
                hex: '#F7CD9C'
            }
        ],
        torso: [
            {
                name: 'Gold Cross',
                thumbnail: 'cross',
                layerSrc: 'cross',
                hex: '#FBB040'
            },
            {
                name: 'Riot Hoodie',
                thumbnail: 'fist',
                layerSrc: 'hoodie',
                hex: '#891515'
            },
            {
                name: 'Bikini Top',
                thumbnail: 'bikini',
                layerSrc: 'bikini',
                hex: '#18F700'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: 'base',
                hex: '#F7CD9C'
            }
        ],
        legs: [
            {
                name: 'Shorts',
                thumbnail: 'belt',
                layerSrc: 'shorts',
                hex: '#282726'
            },
            {
                name: 'Red Trousers',
                thumbnail: '',
                layerSrc: 'trousers',
                hex: '#D92222'
            },
            {
                name: 'Harem Pants',
                thumbnail: 'hippy',
                layerSrc: 'harem-pants',
                hex: '#1C75BC'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: 'base',
                hex: '#F7CD9C'
            }
        ]
    }
}

//use a mix in to make our store available to all tags globally
riot.mixin(StoreMixin(new Store(initialState)));

riot.mount('*');
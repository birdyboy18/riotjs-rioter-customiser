import riot from 'riot'
import sidebar from './components/sidebar.tag'
import ColourList from './components/ColourList.tag'
import Colour from './components/Colour.tag'
import ChangingRoom from './components/ChangingRoom.tag'

let bus = riot.observable()

const store = {
    bus,
    options: {
        head: [
            {
                name: 'Spotty Bandanna',
                thumbnail: '',
                layerSrc: '',
                hex: '#D92222'
            },
            {
                name: 'Lol Helmet',
                thumbnail: '',
                layerSrc: '',
                hex: '#414042'
            },
            {
                name: 'Space Helmet',
                thumbnail: '',
                layerSrc: '',
                hex: '#18F700'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: '',
                hex: '#F7CD9C'
            }
        ],
        torso: [
            {
                name: 'Gold Cross',
                thumbnail: '',
                layerSrc: '',
                hex: '#FBB040'
            },
            {
                name: 'Riot Hoodie',
                thumbnail: '',
                layerSrc: '',
                hex: '#891515'
            },
            {
                name: 'Bikini Top',
                thumbnail: '',
                layerSrc: '',
                hex: '#18F700'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: '',
                hex: '#F7CD9C'
            }
        ],
        legs: [
            {
                name: 'Shorts',
                thumbnail: '',
                layerSrc: '',
                hex: '#282726'
            },
            {
                name: 'Red Trousers',
                thumbnail: '',
                layerSrc: '',
                hex: '#D92222'
            },
            {
                name: 'Harem Pants',
                thumbnail: '',
                layerSrc: '',
                hex: '#1C75BC'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: '',
                hex: '#F7CD9C'
            }
        ]
    }
}

riot.mount('*', store);
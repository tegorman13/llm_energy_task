// --- Constants ---
const NUM_SCENARIOS_TO_SELECT = 4;
const LLM_ESTIMATES_URL = 'llm_estimates1.json';
const APPLIANCE_ICONS = {
    'default': '\u2699\uFE0F',
    'bulb_reference': '\uD83D\uDCA1',
    'est_cfl': '\uD83D\uDCA1',
    'est_desktop': '\uD83D\uDDA5\uFE0F',
    'est_laptop': '\uD83D\uDCBB',
    'est_stereo': '\uD83D\uDD0A',
    'est_electric_clothes_dryer': '\uD83D\uDC55',
    'est_portable_heater': '\uD83D\uDD25',
    'est_room_air_conditioner': '\u2744\uFE0F',
    'est_central_air_conditioner': '\uD83C\uDF2C\uFE0F',
    'est_dish_washer': '\uD83C\uDF7D\uFE0F'
};

// --- Data Definitions ---
const questions = {
    q19_numeracy_percentage: {
        id: 'q19_numeracy_percentage',
        section: 'numeracy',
        type: 'multiple-choice',
        text: 'Imagine a certain event has a 10% chance of happening. If **1000 people** experience this situation, about how many would you expect to see the event happen to?',
        options: [
            { value: 'a', text: '1 person' },
            { value: 'b', text: '10 people' },
            { value: 'c', text: '100 people' },
            { value: 'd', text: '500 people' }
        ],
        correctAnswer: 'c'
    },
    q20_numeracy_probability_compare: {
        id: 'q20_numeracy_probability_compare',
        section: 'numeracy',
        type: 'multiple-choice',
        text: 'Which of the following represents the larger probability?',
        options: [
            { value: 'a', text: '5%' },
            { value: 'b', text: '1 out of 20' },
            { value: 'c', text: 'They are the same' }
        ],
        correctAnswer: 'c'
    },
    q18_energy_estimation: {
        id: 'q18_energy_estimation',
        section: 'energy-knowledge',
        type: 'estimation-table',
        text: 'Estimate energy use relative to a 100W (100 unit) bulb per hour:',
        items: [
            { name: 'Compact Fluorescent Bulb (CFL)', key: 'est_cfl' },
            { name: 'Desktop Computer', key: 'est_desktop' },
            { name: 'Laptop Computer', key: 'est_laptop' },
            { name: 'Stereo', key: 'est_stereo' },
            { name: 'Electric Clothes Dryer', key: 'est_electric_clothes_dryer' },
            { name: 'Portable Heater', key: 'est_portable_heater' },
            { name: 'Room Air-Conditioner', key: 'est_room_air_conditioner' },
            { name: 'Central Air Conditioner', key: 'est_central_air_conditioner' },
            { name: 'Dish Washer', key: 'est_dish_washer' }
        ]
    }
};

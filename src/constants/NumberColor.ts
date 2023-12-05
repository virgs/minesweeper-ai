export const NumberColor = (minesAround: number): string => {
    switch (minesAround) {
        case 1:
            return '#0703f4'
        case 2:
            return '#2a7a00'
        case 3:
            return '#eb0206'
        case 4:
            return '#02027c'
        case 5:
            return '#7b0403'
        case 6:
            return '#2b7c7b'
        case 7:
            return '#000000'
        case 8:
            return '#7c7c7c'
    }

    return 'transparent'
}
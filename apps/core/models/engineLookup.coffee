class EngineLookUp
  @weights =
    ICE: [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 6, 7, 7, 8,
     8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 14, 14, 15, 15, 16, 17, 17, 18,
     19, 20, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 35, 36, 38,
     39, 41, 43, 45, 47, 49, 51, 54, 57, 59, 63, 66, 69, 73, 77, 82, 87, 92,
     98, 105
    ]
    Cell: [1, 1, 1, 1, 1.5, 1.5, 1.5, 1.5, 2, 2, 2, 2.5, 2.5, 2.5, 3, 3, 4,
      4, 4, 4.5, 4.5, 5, 5, 5, 5.5, 5.5, 6, 6, 7, 7, 7.5, 7.5, 7.5, 8.5, 8.5,
      9, 9, 10, 10.5, 10.5, 11, 11.5, 12, 12,13, 13.5, 14, 14.5, 15, 16,
      16.5, 17, 17.5, 19, 19.5, 20, 21, 22, 23, 23.5, 25, 26, 27, 28.5, 29.5,
      31, 32.5, 34.5, 35.5, 38, 40, 41.5, 44, 46.5, 49.5, 52.5, 55.5, 59, 63
    ]
    Fission: [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5.5, 5.5, 5.5,
      6.5, 6.5, 7, 7, 7, 8, 8, 9, 9, 10, 10, 10.5, 10.5, 10.5, 12.5, 12.5,
      13.5, 13.5, 14, 15, 15, 16, 17, 17.5, 17.5, 18.5, 19.5, 20.5, 21, 22,
      23, 24, 24.5, 25.5, 27.5, 28, 29, 31, 31.5, 33.5, 34.5, 36, 38, 39.5,
      41.5, 43, 45, 47.5, 50, 52, 55.5, 58, 60.5, 64, 67.5, 72, 76.5, 80.5,
      86, 92
    ]
    Compact: [1, 1, 1, 1, 1.5, 1.5, 1.5, 1.5, 2.5, 2.5, 2.5, 3, 3, 3, 4, 4,
    4.5, 4.5, 4.5, 5.5, 5.5, 6, 6, 6, 7, 7, 7.5, 7.5, 8.5, 8.5, 9, 9, 9,
    10.5, 10.5, 11.5, 11.5, 12, 13, 13, 13.5, 14.5, 15, 15, 16, 16.5, 17.5,
    18, 19, 19.5, 20.5, 21, 22, 23.5, 24, 25, 26.5, 27, 28.5, 29.5, 31, 32.5,
    34, 35.5, 37, 38.5, 40.5, 43, 44.5, 47.5, 49.5, 52, 55, 58, 61.5, 65.5,
    69, 73.5, 79
    ]
    Standard: [0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1.5, 1.5, 1.5, 2, 2, 2, 2.5,
      2.5, 3, 3, 3, 3.5, 3.5, 4, 4, 4, 4.5, 4.5, 5, 5, 5.5, 5.5, 6, 6, 6, 7,
      7, 7.5, 7.5, 8, 8.5, 8.5, 9, 9.5, 10, 10, 10.5, 11, 11.5, 12, 12.5, 13,
      13.5, 14, 14.5, 15.5, 16, 16.5, 17.5, 18, 19, 19.5, 20.5, 21.5, 22.5,
      23.5, 24.5, 25.5, 27, 28.5, 29.5, 31.5, 33, 34.5, 36.5, 38.5, 41, 43.5,
      46, 49, 52.5
    ]
    Light: [0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5,
      2, 2, 2.5, 2.5, 2.5, 3, 3, 3, 3, 3, 3.5, 3.5, 4, 4, 4.5, 4.5, 4.5, 4.5,
      4.5, 5.5, 5.5, 6, 6, 6, 6.5, 6.5, 7, 7.5, 7.5, 7.5, 8, 8.5, 9, 9, 9.5,
      10, 10.5, 10.5, 11, 12, 12, 12.5, 13.5, 13.5, 14.5, 15, 15.5, 16.5, 17,
      18, 18.5, 19.5, 20.5, 21.5, 22.5, 24, 25, 26, 27.5, 29, 31, 33, 34.5,
      37, 39.5
    ]
    XL: [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 1.5, 1.5,
      1.5, 1.5, 1.5, 2, 2, 2, 2, 2, 2.5, 2.5, 2.5, 2.5, 3, 3, 3, 3, 3, 3.5,
      3.5, 4, 4, 4, 4.5, 4.5, 4.5, 5, 5, 5, 5.5, 5.5, 6, 6, 6.5, 6.5, 7, 7,
      7.5, 8, 8, 8.5, 9, 9, 9.5, 10, 10.5, 11, 11.5, 12, 12.5, 13, 13.5,
      14.5, 15, 16, 16.5, 17.5, 18.5, 19.5, 20.5, 22, 23, 24.5, 26.5
    ]

  @weight: (type, rating) -> @weights[type][(rating / 5) - 2]

module.exports = EngineLookUp
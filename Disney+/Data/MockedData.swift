//
//  RepositoryMocked.swift
//  Disney+
//
//  Created by Dylan Caetano on 24/06/2022.
//

import Foundation

let mockedCasting = [
    Actor(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/qQX1rhQaJ1G8eMG2RknFKiXfNRc.jpg"),
        name: "Bryce Dallas Howard",
        characterName: "Claire Dearing"
    ),
    Actor(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/gB9PnGEvxKg33OSlcqptQwTBwPE.jpg"),
        name: "Laura Dern",
        characterName: "Dr. Ellie Sattler"
    ),
    Actor(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/bNZ03phkLewj8eUR6mGbKZ7jtmv.jpg"),
        name: "Sam Neill",
        characterName: "Dr. Alan Grant"
    )
]

let mockedPoster = [
    Poster(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/original/kNsF6oLpjEKiaWxSOdsKGZArtmA.jpg"),
        title: "Jurassic World 3",
        description: "Quatre ans après la destruction de Isla Nublar. Les dinosaures font désormais partie du quotidien de l’humanité entière. Un équilibre fragile qui va remettre en question la domination de l’espèce humaine maintenant qu’elle doit partager son espace avec les créatures les plus féroces que l’histoire ait jamais connues."
    ),
    Poster(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/original/sKBwQga9qQji3hOgBWWV0K4ARYs.jpg"),
        title: "Jurassic World 3",
        description: "Quatre ans après la destruction de Isla Nublar. Les dinosaures font désormais partie du quotidien de l’humanité entière. Un équilibre fragile qui va remettre en question la domination de l’espèce humaine maintenant qu’elle doit partager son espace avec les créatures les plus féroces que l’histoire ait jamais connues."
    ),
    Poster(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/original/5R1K9gqVNsGbmfqHtrpHRQd0709.jpg"),
        title: "Jurassic World 3",
        description: "Quatre ans après la destruction de Isla Nublar. Les dinosaures font désormais partie du quotidien de l’humanité entière. Un équilibre fragile qui va remettre en question la domination de l’espèce humaine maintenant qu’elle doit partager son espace avec les créatures les plus féroces que l’histoire ait jamais connues."
    )
]

let mockedCell = Cell(
    image: URL(string: "https://www.themoviedb.org/t/p/w1280/cCcNaQVS0Oc6LhDxNqGj1dJxIio.jpg"),
    title: "Buzz l'Éclair",
    description: "Après s’être échoué avec sa commandante et son équipage sur une planète hostile située à 4,2 millions d’années-lumière de la Terre, Buzz l’Eclair tente de ramener tout ce petit monde sain et sauf à la maison. Pour cela, il peut compter sur le soutien d’un groupe de jeunes recrues ambitieuses et sur son adorable chat robot, Sox. Mais l’arrivée du terrible Zurg et de son armée de robots impitoyables ne va pas leur faciliter la tâche, d’autant que ce dernier a un plan bien précis en tête…",
    poster: mockedPoster,
    genre: ["Animation", "Science-Fiction", "Aventure", "Action", "Familial"],
    casting: mockedCasting,
    rating: 7.0
)

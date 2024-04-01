// Création du tableau représentant les mots
var moyensDeTransport = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// Affichage des mots aux indices 2, 3 et 20 (si l'indice 20 n'existe pas, il affichera nil)
print("Mots aux indices 2, 3 et 20 :")
print(moyensDeTransport.indices.contains(2) ? moyensDeTransport[2] : "Indice 2 out of range")
print(moyensDeTransport.indices.contains(3) ? moyensDeTransport[3] : "Indice 3 out of range")
print(moyensDeTransport.indices.contains(20) ? moyensDeTransport[20] : "Indice 20 out of range")

// Affichage de tous les mots de la liste sous la forme "Moyen de transport numéro [i] est [mot]"
print("\nTous les mots de la liste :")
for (index, moyen) in moyensDeTransport.enumerated() {
    print("Moyen de transport numéro \(index) est \(moyen)")
}

// Affichage des mots aux indices impairs puis pairs
print("\nMots aux indices impairs :")
for index in stride(from: 1, to: moyensDeTransport.count, by: 2) {
    print(moyensDeTransport[index])
}

print("\nMots aux indices pairs :")
for index in stride(from: 0, to: moyensDeTransport.count, by: 2) {
    print(moyensDeTransport[index])
}

// Inversion de l'ordre du tableau et stockage dans un nouveau tableau
let reversedTransport = moyensDeTransport.reversed()
print("\nTransport inversé : \(reversedTransport)")

// Insertion des mots 'camion' et 'taxi'
moyensDeTransport.insert("camion", at: 0) // En tête de liste
moyensDeTransport.append("taxi") // En fin de liste
moyensDeTransport.insert(contentsOf: ["camion", "taxi"], at: 2) // À partir de l'indice 2

// Affichage du tableau final
print("\nTableau final : \(moyensDeTransport)")

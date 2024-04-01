// Création d'une liste de dictionnaires contenant les informations des personnes
var personnes: [[String: Any]] = [
    ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
    ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
    ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Francois", "sexe": "M", "annee_naissance": 1980],
    ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]
]

// Affichage du nom de toutes les personnes concaténés avec leur date de naissance
print("\nNoms des personnes avec leur date de naissance :")
for personne in personnes {
    let nom = personne["nom"] as! String
    let annee_naissance = personne["annee_naissance"] as! Int
    let sexe = personne["sexe"] as! String
    let genre = (sexe == "M") ? "est né en" : "est née en"
    print("\(nom) \(genre) \(annee_naissance)")
}

// Affichage des noms de toutes les personnes majeures
print("\nNoms des personnes majeures :")
let anneeCourante = 2024
for personne in personnes {
    let annee_naissance = personne["annee_naissance"] as! Int
    if anneeCourante - annee_naissance >= 18 {
        let nom = personne["nom"] as! String
        print(nom)
    }
}

// Affichage de toutes les filles puis tous les garçons
print("\nFilles :")
for personne in personnes {
    let sexe = personne["sexe"] as! String
    if sexe == "F" {
        let nom = personne["nom"] as! String
        print(nom)
    }
}

print("\nGarçons :")
for personne in personnes {
    let sexe = personne["sexe"] as! String
    if sexe == "M" {
        let nom = personne["nom"] as! String
        print(nom)
    }
}

// Ajout d'une nouvelle personne dans la liste
let nouvellePersonne: [String: Any] = ["nom": "KARIMU", "sexe": "F", "annee_naissance": 2002]
personnes.append(nouvellePersonne)

// Affichage de la liste mise à jour
print("\nListe mise à jour des personnes :")
print(personnes)

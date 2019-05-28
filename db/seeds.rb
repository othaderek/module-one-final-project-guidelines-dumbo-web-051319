character1 = Character.create(name: "Bilbo", race: "Hobbit", class_name: "Rogue")
character2 = Character.create(name: "Gandalf", race: "Human", class_name: "Wizard")
character3 = Character.create(name: "Chuckee Cheese Monster", race: "Rat", class_name: "Bard")

spell1 = Spell.create(name: "Acid Splash", description: "You hurl a bubble of acid.")
spell2 = Spell.create(name: "Absorb Elements", description: "The spell captures some of the incoming energy lessening its effect on you and storing it for your next melee attack.")
spell3 = Spell.create(name: "Acid Arrow", description: "A shimmering green arrow streaks toward a target within range and bursts in a spray of acid.")
spell4 = Spell.create(name: "Animal Messenger", description: "By means of this spell, you use an animal to deliver a message.")
spell5 = Spell.create(name: "Animate Dead", description: "This spell creates an undead servant.")


spell_list1 = CharacterSpell.create(character_id: character1.id, spell_id: spell1.id)
spell_list2 = CharacterSpell.create(character_id: character2.id, spell_id: spell2.id)
spell_list3 = CharacterSpell.create(character_id: character3.id, spell_id: spell3.id)
spell_list4 = CharacterSpell.create(character_id: character1.id, spell_id: spell4.id)
spell_list5 = CharacterSpell.create(character_id: character2.id, spell_id: spell1.id)

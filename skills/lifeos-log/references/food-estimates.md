# Food Estimates

Rough per-portion values for Indian vegetarian home food, based on IFCT 2017 / USDA-style averages. They are planning estimates, not lab values. A product label always wins (pea protein, pre-workout, packaged namkeen, biscuits). Oil and ghee are the biggest hidden variable: add ~5 g fat / ~45 kcal per teaspoon when the user mentions it, or when the dish is visibly oily.

P = protein, C = carbohydrate, F = fat, Fib = fiber (all grams).

| Item | Portion | P | C | F | Fib | kcal |
|---|---|---:|---:|---:|---:|---:|
| Roti / chapati, plain | 1 medium (~30 g atta) | 3 | 18 | 1 | 2 | 100 |
| Roti with ghee | 1 | 3 | 18 | 5.5 | 2 | 145 |
| Plain paratha | 1 | 4 | 30 | 9 | 3 | 220 |
| Aloo paratha | 1 | 5 | 40 | 12 | 4 | 300 |
| Rice, cooked | 1 cup (~150 g) | 4 | 44 | 0.4 | 0.6 | 200 |
| Rice, cooked, small cup | ~100 g | 3 | 28 | 0.3 | 0.4 | 130 |
| Dal (arhar/moong/masoor), cooked with tadka | 1 katori (~150 ml, ~30 g dry) | 7 | 20 | 4 | 4 | 150 |
| Rajma / chole, cooked | 1 katori | 7 | 25 | 5 | 7 | 190 |
| Dry sabji (aloo, gobhi, bhindi, bharta) | 1 katori | 3 | 14 | 7 | 3 | 140 |
| Leafy / gravy sabji, light oil | 1 katori | 3 | 10 | 5 | 3 | 100 |
| Karela sabji | 1 katori | 2 | 8 | 6 | 3 | 100 |
| Vegetable soup | 1 bowl | 2 | 8 | 2 | 2 | 60 |
| Soya chunks, dry weight | 10 g | 5 | 3 | 0.1 | 1.3 | 35 |
| Tofu / soy paneer | 100 g | 12 | 2 | 6 | 0.5 | 130 |
| Paneer | 100 g | 18 | 3 | 21 | 0 | 280 |
| Moong, dry weight (sprouts too) | 100 g | 24 | 60 | 1.2 | 16 | 350 |
| Kala chana, boiled | 100 g cooked | 8 | 27 | 2.6 | 7.6 | 165 |
| Kala chana, dry weight | 20 g | 4 | 12 | 1 | 3.5 | 72 |
| Curd / dahi | 100 g | 3.5 | 5 | 3 | 0 | 65 |
| Chaach / buttermilk | 1 glass (250 ml) | 3 | 5 | 1.5 | 0 | 50 |
| Milk, toned | 250 ml | 8 | 12 | 7.5 | 0 | 145 |
| Milk tea with sugar | 1 cup | 2 | 12 | 3 | 0 | 90 |
| Banana | 1 medium | 1 | 27 | 0.4 | 3 | 105 |
| Apple | 1 medium | 0.5 | 25 | 0.3 | 4 | 95 |
| Peanuts | 10 g | 2.6 | 1.6 | 4.9 | 0.9 | 57 |
| Mixed seeds | 10 g | 2 | 2 | 4.5 | 1.5 | 55 |
| Raisins | 10 g | 0.3 | 8 | 0 | 0.4 | 30 |
| Besan namkeen | 10 g | 2 | 4 | 3.5 | 1 | 55 |
| Small biscuit (Marie/glucose type) | 1 (~6 g) | 0.4 | 4.5 | 0.6 | 0 | 25 |
| Samosa, small | 1 (~50 g) | 2.5 | 18 | 10 | 1.3 | 160 |
| Samosa, medium/street | 1 (~90 g) | 4 | 30 | 17 | 2 | 260 |
| Peda / barfi | 1 (~30 g) | 2 | 18 | 5 | 0 | 130 |
| Poha | 1 plate (~200 g cooked) | 5 | 45 | 8 | 2 | 270 |
| Upma | 1 plate | 5 | 35 | 9 | 2 | 250 |
| Dalia, dry weight | 60 g | 7 | 45 | 1 | 7 | 210 |
| Oats, dry weight | 40 g | 5 | 27 | 3 | 4 | 150 |
| Idli | 1 | 2 | 12 | 0.2 | 0.5 | 60 |
| Plain dosa | 1 | 3 | 22 | 5 | 1 | 150 |
| Pea protein | 1 scoop (~30 g) | 24 | 1 | 2 | 0 | 120 |
| Whey protein | 1 scoop (~30 g) | 24 | 3 | 1.5 | 0 | 120 |
| Egg, outside home | 1 | 6 | 0.5 | 5 | 0 | 75 |
| Cucumber / salad | any | ~0 | 3 | 0 | 1 | ~15 |

Unknown items: estimate from the nearest row and mark it `(rough)`.

## Micro check (qualitative, never mg)

Rough portions can't support milligram micronutrient numbers, so flag the nutrients a vegetarian diet most often runs short on as `ok`, `some` or `low`, from what was eaten:

| Nutrient | Main sources in this diet |
|---|---|
| B12 | dairy only (milk, curd, chaach, paneer); eggs outside home. Usually `low` unless dairy is substantial |
| Iron (non-heme) | soya, dal, chana, moong, leafy greens, karela; absorption helped by vitamin C (lemon, cauliflower, guava, amla) and hurt by tea with the meal |
| Calcium | milk, curd, chaach, paneer, sesame, ragi |
| Vitamin D | almost none from food; sunlight or a sachet |
| Omega-3 | flax, chia, walnuts; otherwise `low` |
| Fiber | numeric from the table; ~30 g/day is a common general guideline |

Report facts only. Don't recommend supplements or doses.

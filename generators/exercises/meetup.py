def extra_cases():
    return [
        {
            "description": "when last Thursday in February in a non-leap year is not the 29th",
            "property": "meetup",
            "input": {
                "year": 2300,
                "month": 2,
                "week": "last",
                "dayofweek": "Thursday",
            },
            "expected": "2300-02-22",
        },
        {
            "description": "when fourth Monday is the 23nd, the second day of the fourth week",
            "property": "meetup",
            "input": {
                "year": 2468,
                "month": 1,
                "week": "fourth",
                "dayofweek": "Monday",
            },
            "expected": "2468-01-23",
        },
    ]


def gen_test_case(prop, description, inp, expected, f):
    year = inp["year"]
    month = inp["month"]
    week = inp["week"]
    dayofweek = inp["dayofweek"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' {year} {month} "{week}" "{dayofweek}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write(
        "def main (year: i32) (month: i32) (week: []u8) (dayofweek: []u8): []u8 =\n"
    )
    f.write("  meetup year month week dayofweek\n")

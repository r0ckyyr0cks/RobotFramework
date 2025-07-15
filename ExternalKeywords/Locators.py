import  json
import jsonpath
import response


def read_locator_from_json(locatorname):
    response = json.loads("../JsonFiles/Credentials.json")
    value = jsonpath.jsonpath(response,locatorname)
    return value


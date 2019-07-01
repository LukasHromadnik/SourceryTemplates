import Foundation

protocol APIService { }

// sourcery:inline:LoginAPIService.APIService
protocol HasLoginAPI {
    var loginApi: LoginAPIServicing { get }
}

protocol LoginAPIServicing {
    func create(data: Data, name: String?) -> Result<String, NoError>
}

extension LoginAPIService: LoginAPIServicing { }
// sourcery:end

class LoginAPIService: APIService {

    func create(data: Data, name: String?) -> Result<String, NoError> {

    }

}

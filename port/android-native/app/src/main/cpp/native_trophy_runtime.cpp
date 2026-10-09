#include "native_trophy_runtime.hpp"

namespace dh2::native::trophies {

bool OwnerV1::initialize(data::Bytes records, data::Bytes names,
                         data::Bytes fields, std::string& error) {
    error.clear();
    if (manager_.initialized()) return true;

    data::TrophyTableV1 table;
    if (!table.load(records, names, fields, error)) return false;
    return manager_.initialize(table, error);
}

} // namespace dh2::native::trophies

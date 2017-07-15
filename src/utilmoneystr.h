// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2015 The Doucoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

/**
 * Money parsing/formatting utilities.
 */
#ifndef DOUCOIN_UTILMONEYSTR_H
#define DOUCOIN_UTILMONEYSTR_H

#include <stdint.h>
#include <string>

#include "amount.h"

std::string FormatMoney(const CAmount& n);
bool ParseMoney(const std::string& str, CAmount& nRet);
bool ParseMoney(const char* pszIn, CAmount& nRet);

#endif // DOUCOIN_UTILMONEYSTR_H

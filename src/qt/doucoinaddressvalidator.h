// Copyright (c) 2011-2014 The Doucoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef DOUCOIN_QT_DOUCOINADDRESSVALIDATOR_H
#define DOUCOIN_QT_DOUCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class DoucoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit DoucoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Doucoin address widget validator, checks for a valid doucoin address.
 */
class DoucoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit DoucoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // DOUCOIN_QT_DOUCOINADDRESSVALIDATOR_H

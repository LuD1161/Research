.class public Lnet/sqlcipher/database/SupportHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/h;


# instance fields
.field private final clearPassphrase:Z

.field private passphrase:[B

.field private standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Ly0/h$b;[BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ly0/h$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    iput-boolean p4, p0, Lnet/sqlcipher/database/SupportHelper;->clearPassphrase:Z

    new-instance p2, Lnet/sqlcipher/database/SupportHelper$1;

    iget-object v3, p1, Ly0/h$b;->a:Landroid/content/Context;

    iget-object v4, p1, Ly0/h$b;->b:Ljava/lang/String;

    iget-object p4, p1, Ly0/h$b;->c:Ly0/h$a;

    iget v6, p4, Ly0/h$a;->a:I

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lnet/sqlcipher/database/SupportHelper$1;-><init>(Lnet/sqlcipher/database/SupportHelper;Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Ly0/h$b;)V

    iput-object p2, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Ly0/g;
    .locals 1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SupportHelper;->getWritableDatabase()Ly0/g;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Ly0/g;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    iget-object v2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, p0, Lnet/sqlcipher/database/SupportHelper;->clearPassphrase:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aput-byte v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x1

    move v5, v0

    move v6, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-byte v7, v2, v5

    if-eqz v6, :cond_1

    if-nez v7, :cond_1

    move v6, v4

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The passphrase appears to be cleared. This happens by default the first time you use the factory to open a database, so we can remove the cleartext passphrase from memory. If you close the database yourself, please use a fresh SupportFactory to reopen it. If something else (e.g., Room) closed the database, and you cannot control that, use SupportFactory boolean constructor option to opt out of the automatic password clearing step. See the project README for more information."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    throw v1
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

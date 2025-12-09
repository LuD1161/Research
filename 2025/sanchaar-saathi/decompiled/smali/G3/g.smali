.class public abstract synthetic LG3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu3/p;)LG3/d;
    .locals 8

    new-instance v7, LG3/b;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LG3/b;-><init>(Lu3/p;Ll3/i;ILF3/a;ILv3/g;)V

    return-object v7
.end method

.method public static final b(Lu3/p;)LG3/d;
    .locals 1

    new-instance v0, LG3/o;

    invoke-direct {v0, p0}, LG3/o;-><init>(Lu3/p;)V

    return-object v0
.end method

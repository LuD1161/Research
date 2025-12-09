.class public abstract Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([Ljava/lang/Enum;)Lo3/a;
    .locals 1

    const-string v0, "entries"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo3/c;

    invoke-direct {v0, p0}, Lo3/c;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method

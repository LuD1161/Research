.class public abstract Lg0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lg0/f;
    .locals 3

    new-instance v0, Lg0/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Lg0/c;-><init>(Ljava/util/Map;ZILv3/g;)V

    return-object v0
.end method

.method public static final varargs b([Lg0/f$b;)Lg0/c;
    .locals 4

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg0/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lg0/c;-><init>(Ljava/util/Map;ZILv3/g;)V

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lg0/f$b;

    invoke-virtual {v0, p0}, Lg0/c;->h([Lg0/f$b;)V

    return-object v0
.end method

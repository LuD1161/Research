.class public abstract Ll1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ll1/f;)Ljava/util/Map;
    .locals 3

    invoke-interface {p0}, Ll1/f;->d()Lj1/d;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sql"

    invoke-virtual {p0}, Lj1/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arguments"

    invoke-virtual {p0}, Lj1/d;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

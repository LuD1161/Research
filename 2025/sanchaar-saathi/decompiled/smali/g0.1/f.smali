.class public abstract Lg0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/f$a;,
        Lg0/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method

.method public abstract b(Lg0/f$a;)Ljava/lang/Object;
.end method

.method public final c()Lg0/c;
    .locals 3

    new-instance v0, Lg0/c;

    invoke-virtual {p0}, Lg0/f;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Li3/E;->s(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg0/c;-><init>(Ljava/util/Map;Z)V

    return-object v0
.end method

.method public final d()Lg0/f;
    .locals 3

    new-instance v0, Lg0/c;

    invoke-virtual {p0}, Lg0/f;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Li3/E;->s(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg0/c;-><init>(Ljava/util/Map;Z)V

    return-object v0
.end method

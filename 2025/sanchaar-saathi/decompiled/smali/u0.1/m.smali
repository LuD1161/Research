.class public final Lu0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu0/u;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lu0/u;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/m;->a:Lu0/u;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "newSetFromMap(IdentityHashMap())"

    invoke-static {p1, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lu0/m;->b:Ljava/util/Set;

    return-void
.end method

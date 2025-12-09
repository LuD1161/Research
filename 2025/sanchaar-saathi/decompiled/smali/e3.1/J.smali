.class public abstract Le3/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[LA3/h;

.field public static final b:Lw3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lv3/r;

    const-string v1, "getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v2, 0x1

    const-class v3, Le3/J;

    const-string v4, "sharedPreferencesDataStore"

    invoke-direct {v0, v3, v4, v1, v2}, Lv3/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lv3/x;->e(Lv3/q;)LA3/g;

    move-result-object v0

    new-array v1, v2, [LA3/h;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Le3/J;->a:[LA3/h;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v3, "FlutterSharedPreferences"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lf0/a;->b(Ljava/lang/String;Ld0/b;Lu3/l;LD3/I;ILjava/lang/Object;)Lw3/a;

    move-result-object v0

    sput-object v0, Le3/J;->b:Lw3/a;

    return-void
.end method

.method public static final synthetic a(Landroid/content/Context;)Lc0/h;
    .locals 0

    invoke-static {p0}, Le3/J;->b(Landroid/content/Context;)Lc0/h;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Lc0/h;
    .locals 3

    sget-object v0, Le3/J;->b:Lw3/a;

    sget-object v1, Le3/J;->a:[LA3/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lw3/a;->a(Ljava/lang/Object;LA3/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc0/h;

    return-object p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_2

    instance-of p0, p1, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Long;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/String;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/lang/Object;Le3/G;)Ljava/lang/Object;
    .locals 7

    const-string v0, "listEncoder"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v5, "substring(...)"

    const/16 v6, 0x28

    if-eqz v1, :cond_1

    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

    invoke-static {v0, v1, v2, v3, v4}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le3/G;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv3/l;->b(Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    const-string p1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    invoke-static {v0, p1, v2, v3, v4}, LC3/o;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.class public Lv3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv3/i;)LA3/e;
    .locals 0

    return-object p1
.end method

.method public b(Ljava/lang/Class;)LA3/b;
    .locals 1

    new-instance v0, Lv3/e;

    invoke-direct {v0, p1}, Lv3/e;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)LA3/d;
    .locals 1

    new-instance v0, Lv3/n;

    invoke-direct {v0, p1, p2}, Lv3/n;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lv3/o;)LA3/f;
    .locals 0

    return-object p1
.end method

.method public e(Lv3/q;)LA3/g;
    .locals 0

    return-object p1
.end method

.method public f(Lv3/h;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public g(Lv3/m;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lv3/y;->f(Lv3/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

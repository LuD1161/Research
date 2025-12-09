.class public abstract Lv3/q;
.super Lv3/s;
.source "SourceFile"

# interfaces
.implements LA3/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lv3/s;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()LA3/a;
    .locals 1

    invoke-static {p0}, Lv3/x;->e(Lv3/q;)LA3/g;

    move-result-object v0

    return-object v0
.end method

.method public h()LA3/g$a;
    .locals 1

    invoke-virtual {p0}, Lv3/s;->o()LA3/h;

    move-result-object v0

    check-cast v0, LA3/g;

    invoke-interface {v0}, LA3/g;->h()LA3/g$a;

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LA3/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

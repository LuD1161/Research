.class public abstract Lv3/o;
.super Lv3/s;
.source "SourceFile"

# interfaces
.implements LA3/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lv3/s;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()LA3/a;
    .locals 1

    invoke-static {p0}, Lv3/x;->d(Lv3/o;)LA3/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, LA3/f;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

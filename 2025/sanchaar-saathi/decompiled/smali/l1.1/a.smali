.class public abstract Ll1/a;
.super Ll1/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ll1/a;->k()Ll1/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ll1/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ll1/a;->k()Ll1/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ll1/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract k()Ll1/g;
.end method

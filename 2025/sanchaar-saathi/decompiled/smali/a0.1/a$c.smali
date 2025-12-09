.class public La0/a$c;
.super LT/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:La0/a;


# direct methods
.method public constructor <init>(La0/a;)V
    .locals 0

    iput-object p1, p0, La0/a$c;->b:La0/a;

    invoke-direct {p0}, LT/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)LT/m;
    .locals 1

    iget-object v0, p0, La0/a$c;->b:La0/a;

    invoke-virtual {v0, p1}, La0/a;->H(I)LT/m;

    move-result-object p1

    invoke-static {p1}, LT/m;->T(LT/m;)LT/m;

    move-result-object p1

    return-object p1
.end method

.method public d(I)LT/m;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, La0/a$c;->b:La0/a;

    iget p1, p1, La0/a;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, La0/a$c;->b:La0/a;

    iget p1, p1, La0/a;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, La0/a$c;->b(I)LT/m;

    move-result-object p1

    return-object p1
.end method

.method public f(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, La0/a$c;->b:La0/a;

    invoke-virtual {v0, p1, p2, p3}, La0/a;->P(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

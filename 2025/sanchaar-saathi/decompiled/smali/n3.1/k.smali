.class public abstract Ln3/k;
.super Ln3/d;
.source "SourceFile"

# interfaces
.implements Lv3/h;


# instance fields
.field public final h:I


# direct methods
.method public constructor <init>(ILl3/e;)V
    .locals 0

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    iput p1, p0, Ln3/k;->h:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Ln3/k;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ln3/a;->m()Ll3/e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lv3/x;->f(Lv3/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ln3/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

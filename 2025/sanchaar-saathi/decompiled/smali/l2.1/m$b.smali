.class public Ll2/m$b;
.super Ll2/m$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Ll2/m$d;


# direct methods
.method public constructor <init>(Ll2/m$d;)V
    .locals 0

    invoke-direct {p0}, Ll2/m$g;-><init>()V

    iput-object p1, p0, Ll2/m$b;->b:Ll2/m$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lk2/a;ILandroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Ll2/m$b;->b:Ll2/m$d;

    invoke-static {v0}, Ll2/m$d;->h(Ll2/m$d;)F

    move-result v6

    iget-object v0, p0, Ll2/m$b;->b:Ll2/m$d;

    invoke-static {v0}, Ll2/m$d;->i(Ll2/m$d;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Ll2/m$b;->b:Ll2/m$d;

    invoke-static {v0}, Ll2/m$d;->b(Ll2/m$d;)F

    move-result v0

    iget-object v1, p0, Ll2/m$b;->b:Ll2/m$d;

    invoke-static {v1}, Ll2/m$d;->c(Ll2/m$d;)F

    move-result v1

    iget-object v2, p0, Ll2/m$b;->b:Ll2/m$d;

    invoke-static {v2}, Ll2/m$d;->d(Ll2/m$d;)F

    move-result v2

    iget-object v3, p0, Ll2/m$b;->b:Ll2/m$d;

    invoke-static {v3}, Ll2/m$d;->e(Ll2/m$d;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lk2/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method

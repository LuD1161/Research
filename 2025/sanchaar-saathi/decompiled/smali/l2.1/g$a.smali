.class public Ll2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/g;-><init>(Ll2/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll2/g;


# direct methods
.method public constructor <init>(Ll2/g;)V
    .locals 0

    iput-object p1, p0, Ll2/g$a;->a:Ll2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll2/m;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Ll2/g$a;->a:Ll2/g;

    invoke-static {v0}, Ll2/g;->b(Ll2/g;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Ll2/m;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Ll2/g$a;->a:Ll2/g;

    invoke-static {v0}, Ll2/g;->d(Ll2/g;)[Ll2/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Ll2/m;->f(Landroid/graphics/Matrix;)Ll2/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Ll2/m;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Ll2/g$a;->a:Ll2/g;

    invoke-static {v0}, Ll2/g;->b(Ll2/g;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Ll2/m;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Ll2/g$a;->a:Ll2/g;

    invoke-static {v0}, Ll2/g;->c(Ll2/g;)[Ll2/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Ll2/m;->f(Landroid/graphics/Matrix;)Ll2/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

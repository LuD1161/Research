.class public LD0/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/c;->s(Landroid/view/ViewGroup;LD0/r;LD0/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F

.field public final synthetic e:LD0/c;


# direct methods
.method public constructor <init>(LD0/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, LD0/c$a;->e:LD0/c;

    iput-object p2, p0, LD0/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, LD0/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, LD0/c$a;->c:Landroid/view/View;

    iput p5, p0, LD0/c$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, LD0/c$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, LD0/z;->b(Landroid/view/View;)LD0/y;

    move-result-object p1

    iget-object v0, p0, LD0/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, LD0/y;->d(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LD0/c$a;->c:Landroid/view/View;

    iget v0, p0, LD0/c$a;->d:F

    invoke-static {p1, v0}, LD0/z;->g(Landroid/view/View;F)V

    return-void
.end method

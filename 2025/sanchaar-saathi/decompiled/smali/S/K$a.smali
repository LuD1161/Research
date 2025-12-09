.class public LS/K$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LS/K;->i(Landroid/view/View;LS/L;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LS/L;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LS/K;


# direct methods
.method public constructor <init>(LS/K;LS/L;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, LS/K$a;->c:LS/K;

    iput-object p2, p0, LS/K$a;->a:LS/L;

    iput-object p3, p0, LS/K$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, LS/K$a;->a:LS/L;

    iget-object v0, p0, LS/K$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, LS/L;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, LS/K$a;->a:LS/L;

    iget-object v0, p0, LS/K$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, LS/L;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, LS/K$a;->a:LS/L;

    iget-object v0, p0, LS/K$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, LS/L;->c(Landroid/view/View;)V

    return-void
.end method

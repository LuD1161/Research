.class public LD0/l$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/l;->X(Landroid/animation/Animator;Lv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/a;

.field public final synthetic b:LD0/l;


# direct methods
.method public constructor <init>(LD0/l;Lv/a;)V
    .locals 0

    iput-object p1, p0, LD0/l$b;->b:LD0/l;

    iput-object p2, p0, LD0/l$b;->a:Lv/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, LD0/l$b;->a:Lv/a;

    invoke-virtual {v0, p1}, Lv/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LD0/l$b;->b:LD0/l;

    iget-object v0, v0, LD0/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, LD0/l$b;->b:LD0/l;

    iget-object v0, v0, LD0/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

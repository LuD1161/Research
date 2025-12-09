.class public LD0/c$h;
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
.field public final synthetic a:LD0/c$k;

.field public final synthetic b:LD0/c;

.field private mViewBounds:LD0/c$k;


# direct methods
.method public constructor <init>(LD0/c;LD0/c$k;)V
    .locals 0

    iput-object p1, p0, LD0/c$h;->b:LD0/c;

    iput-object p2, p0, LD0/c$h;->a:LD0/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, LD0/c$h;->mViewBounds:LD0/c$k;

    return-void
.end method

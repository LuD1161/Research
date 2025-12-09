.class public LN2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN2/g;->M()Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN2/g;


# direct methods
.method public constructor <init>(LN2/g;)V
    .locals 0

    iput-object p1, p0, LN2/g$a;->a:LN2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, LN2/g$a;->a:LN2/g;

    invoke-virtual {v0}, LN2/g;->H()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    iget-object v0, p0, LN2/g$a;->a:LN2/g;

    invoke-virtual {v0}, LN2/g;->I()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, LN2/g$a;->a:LN2/g;

    invoke-virtual {v0, p1}, LN2/g;->X(Landroid/window/BackEvent;)V

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, LN2/g$a;->a:LN2/g;

    invoke-virtual {v0, p1}, LN2/g;->T(Landroid/window/BackEvent;)V

    return-void
.end method

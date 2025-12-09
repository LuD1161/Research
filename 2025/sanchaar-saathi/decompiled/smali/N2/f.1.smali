.class public final synthetic LN2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:LN2/g;


# direct methods
.method public synthetic constructor <init>(LN2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN2/f;->a:LN2/g;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, LN2/f;->a:LN2/g;

    invoke-virtual {v0}, LN2/g;->onBackPressed()V

    return-void
.end method

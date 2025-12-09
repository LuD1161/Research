.class public final synthetic LH2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls2/b;


# instance fields
.field public final synthetic a:LH2/l;


# direct methods
.method public synthetic constructor <init>(LH2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH2/b;->a:LH2/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LH2/b;->a:LH2/l;

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-static {v0, p1}, LH2/l;->k(LH2/l;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

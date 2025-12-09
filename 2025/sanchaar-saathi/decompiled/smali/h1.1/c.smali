.class public final synthetic Lh1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lh1/e;


# direct methods
.method public synthetic constructor <init>(Lh1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/c;->e:Lh1/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lh1/c;->e:Lh1/e;

    invoke-static {v0}, Lh1/e;->g(Lh1/e;)V

    return-void
.end method

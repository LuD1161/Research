.class public final synthetic LQ3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/cdot/diu/main/NetworkWorker;


# direct methods
.method public synthetic constructor <init>(Lorg/cdot/diu/main/NetworkWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ3/a;->e:Lorg/cdot/diu/main/NetworkWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LQ3/a;->e:Lorg/cdot/diu/main/NetworkWorker;

    invoke-static {v0}, Lorg/cdot/diu/main/NetworkWorker;->q(Lorg/cdot/diu/main/NetworkWorker;)V

    return-void
.end method

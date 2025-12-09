.class public final synthetic Ld/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld/l;


# direct methods
.method public synthetic constructor <init>(Ld/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/k;->e:Ld/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld/k;->e:Ld/l;

    invoke-static {v0}, Ld/l;->a(Ld/l;)V

    return-void
.end method

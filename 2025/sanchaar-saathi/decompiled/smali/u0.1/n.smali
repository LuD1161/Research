.class public final synthetic Lu0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lu0/o;


# direct methods
.method public synthetic constructor <init>(Lu0/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/n;->e:Lu0/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu0/n;->e:Lu0/o;

    invoke-virtual {v0}, Lu0/o;->k()V

    return-void
.end method

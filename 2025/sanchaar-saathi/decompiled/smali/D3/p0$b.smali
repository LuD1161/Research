.class public final LD3/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD3/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final synthetic e:LD3/p0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/p0$b;

    invoke-direct {v0}, LD3/p0$b;-><init>()V

    sput-object v0, LD3/p0$b;->e:LD3/p0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

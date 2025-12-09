.class public final LD3/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD3/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic e:LD3/G$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/G$a;

    invoke-direct {v0}, LD3/G$a;-><init>()V

    sput-object v0, LD3/G$a;->e:LD3/G$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
